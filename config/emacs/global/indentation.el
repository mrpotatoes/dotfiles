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

(setq default-tab-width 2)
(setq-default indent-tabs-mode nil)
