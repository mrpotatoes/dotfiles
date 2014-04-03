;; --------------------------------------------------------------------------------
;; Turn this into a project.

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