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