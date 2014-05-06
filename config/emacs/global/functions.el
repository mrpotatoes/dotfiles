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
;;    - http://ergoemacs.org/emacs/elisp_compact_ove-beginning-of-lineempty_lines.html
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

;; -----------------------------------------------------------------------------
;; Duplicate a line or region.
(defun duplicate-line ()
  (let ((col (current-column))
        (l (thing-at-point 'line)))
    (save-excursion
      (goto-char (point-at-eol))
      (forward-char 1)
      (insert l))
    (forward-line 1)
    (move-to-column col)))

(defun duplicate-region (beg end)
  (let ((selection (buffer-substring-no-properties beg end)))
    (insert selection)))

(defun duplicate ()
  (interactive)
  (if (not (region-active-p))
      (duplicate-line)
    (duplicate-region (region-beginning) (region-end))))

(global-set-key (kbd "ESC <down>") 'duplicate)

;;----------------------------------------
;; Smarter move to beginning
;;----------------------------------------
(defun smarter-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line.

Move point to the first non-whitespace character on this line.
If point is already there, move to the beginning of the line.
Effectively toggle between the first non-whitespace character and
the beginning of the line.

If ARG is not nil or 1, move forward ARG - 1 lines first.  If
point reaches the beginning or end of the buffer, stop there."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (move-beginning-of-line 1)
    (when (= orig-point (point))
      (back-to-indentation))))

;; remap C-a to `smarter-move-beginning-of-line'
(global-set-key (kbd "C-a") 'smarter-move-beginning-of-line)
