;; --------------------------------------------------------------------------------
;; Projects using mk-project
;;    - https://github.com/mattkeller/mk-project
;;    - https://github.com/rakete/mk-project
(require 'mk-project)
(project-def "corepublisher"
  '((basedir          "/var/www/corepub/")
    (src-patterns     ("*.inc" "*.module" "*.php" "*.install"))
    (langauge         "php")
    (etags-command    "etags --language=php $(find . -name \"*.inc\" -o -name \"*.module\" -o -name \"*.php\" -o -name \"*.install\")")
    ;(ignore-patterns  ("*.class" "*.wsdl"))
    (tags-file        "/var/www/corepub/TAGS")
    (file-list-cache  "/var/www/corepub/files")
    (open-files-cache "/var/www/corepub/open-files")
    (vcs              git)
    ;(compile-cmd      "ant")
    ;(ack-args         "--java")
    (startup-hook     corepublisher-startup)
    (shutdown-hook    corepublisher-shutdown)))

;; Set some keybindings for this project.
(defun corepublisher-startup ()
;  (add-hook 'after-save-hook 'mk-project-saved-file)
;  (global-set-key (kbd "C-c p c") 'project-compile)
;  (global-set-key (kbd "C-c p l") 'project-load)
;  (global-set-key (kbd "C-c p a") 'project-ack)
;  (global-set-key (kbd "C-c p g") 'project-grep)
;  (global-set-key (kbd "C-c p o") 'project-multi-occur)
;  (global-set-key (kbd "C-c p u") 'project-unload)
;  (global-set-key (kbd "C-c p f") 'project-find-file) ; or project-find-file-ido
;  (global-set-key (kbd "C-c p i") 'project-index)
;  (global-set-key (kbd "C-c p s") 'project-status)
;  (global-set-key (kbd "C-c p h") 'project-home)
;  (global-set-key (kbd "C-c p d") 'project-dired)
;  (global-set-key (kbd "C-c p t") 'project-tags)
)

