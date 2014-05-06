;; --------------------------------------------------------------------------------
;; Delete word without adding it to kill ring in minibuffer
(defun backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word. With argument ARG, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))

;; --------------------------------------------------------------------------------
;; ...
(defun buffer-file-name-interactive ()
  "Interactive wrapper for buffer-file-name."
  (interactive)
  (message (buffer-file-name)))
 
;; --------------------------------------------------------------------------------
;; Select the previous window
(defun other-window-backward (&optional n)
  "Select Nth previous window."
  (interactive p)
  (if n
    (other-window (- n))
    (other-window -1)))

;; --------------------------------------------------------------------------------
;; Comment the current line.
(defun comment-or-uncomment-region-or-line ()
  "Comments or uncomments the region or the current line if there's no active region."
  (interactive)
  (let (beg end)
    (if (region-active-p)
      (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region beg end)))

;; --------------------------------------------------------------------------------
;; Remove trailing white space.
;;    - http://ergoemacs.org/emacs/elisp_compact_empty_lines.html
(defun xah-clean-whitespace ()
  "Delete trailing whitespace, and replace sequence of newlines into just 2.
   Work on whole buffer, or text selection."
  (interactive)
  (let* (
         (bds (get-selection-or-unit 'buffer))
         (p1 (elt bds 1))
         (p2 (elt bds 2))
         )
    (save-excursion
      (save-restriction
        (narrow-to-region p1 p2)
        (progn
          (goto-char (point-min))
          (while (search-forward-regexp " +\n" nil "noerror")
            (replace-match "\n") ))
        (progn
          (goto-char (point-min))
          (while (search-forward-regexp "\n\n\n+" nil "noerror")
            (replace-match "\n\n") )) )) ))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; --------------------------------------------------------------------------------
;; Global Indentation
(defun add-indentation-spaces ()
  "add TAB-WIDTH spaces to the beginning of this line"
  (interactive)
  (indent-rigidly (line-beginning-position) (line-end-position) (tab-width)))
  
(defun remove-indentation-spaces ()
  "remove TAB-WIDTH spaces from the beginning of this line"
  (interactive)
  (indent-rigidly (line-beginning-position) (line-end-position) (- tab-width)))

; (global-set-key (kbd "<tab>") 'add-indentation-spaces)
; (global-set-key (kbd "<backtab>") 'remove-indentation-spaces)
; (define-key my-keys-minor-mode-map (kbd "<backtab>") 'remove-indentation-spaces)

;; --------------------------------------------------------------------------------
;; Indentation
;;    - http://stackoverflow.com/questions/11623189/how-to-bind-keys-to-indent-unindent-region-in-emacs
;;    - http://stackoverflow.com/questions/6918134/how-do-i-indent-n-spaces-in-emacs
;;    - http://stackoverflow.com/questions/2585091/emacs-bulk-indent-for-python
;;    - http://www.emacswiki.org/emacs/IndentingText
(defun my-indent-region (N)
  (interactive "p")
  (if mark-active
      (progn (indent-rigidly (min (mark) (point)) (max (mark) (point)) (* N 2))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun my-unindent-region (N)
  (interactive "p")
  (if mark-active
      (progn (indent-rigidly (min (mark) (point)) (max (mark) (point)) (* N -2))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(global-set-key ">" 'my-indent-region)
(global-set-key "<" 'my-unindent-region)

;; --------------------------------------------------------------------------------
;; Indentation #3: 
;;    - Shift the selected region right if distance is postive, left if negative
(defun shift-region (distance)
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun shift-right ()
  (interactive)
  (shift-region 2))

(defun shift-left ()
  (interactive)
  (shift-region -2))

;; Bind (shift-right) and (shift-left) function to your favorite keys. I use
;; the following so that Ctrl-Shift-Right Arrow moves selected text one 
;; column to the right, Ctrl-Shift-Left Arrow moves selected text one
;; column to the left:

(global-set-key [C-S-right] 'shift-right)
(global-set-key [C-S-left] 'shift-left)

(global-set-key (kbd "<tab>") 'shift-right)
(global-set-key (kbd "<backtab>") 'shift-right)