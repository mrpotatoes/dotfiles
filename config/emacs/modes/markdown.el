;; --------------------------------------------------------------------------------
;; The settings for the markdown mode. This needs cleanup.
;;  - http://jblevins.org/projects/markdown-mode/

(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'markdown-mode "markdown-mode")
