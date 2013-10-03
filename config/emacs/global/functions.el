;; --------------------------------------------------------------------------------
;; Turn this into a project.

;; --------------------------------------------------------------------------------
;; Delete word without adding it to kill ring in minibuffer
(defun backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word. With argument ARG, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (backward-word arg) (point))))

(defun buffer-file-name-interactive ()
  "Interactive wrapper for buffer-file-name."
  (interactive)
  (message (buffer-file-name)))
 
(defun other-window-backward (&optional n)
  "Select Nth previous window."
  (interactive p)
  (if n
    (other-window (- n))
    (other-window -1)))

