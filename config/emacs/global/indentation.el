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

(global-set-key (kbd "<tab>") 'add-indentation-spaces)
(global-set-key (kbd "<backtab>") 'remove-indentation-spaces)

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
(global-set-key (kbd "<backtab>") 'my-unindent-region)