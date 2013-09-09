
;; --------------------------------------------------------------------------------
;; Not sure what I want but I have a bunch of projects in here to try out.
;;  - https://github.com/bbatsov/projectile
;; https://github.com/mattkeller/etags-update
;; http://emacs-ide.tuxfamily.org/

(require 'eproject)
(require 'eproject-extras)

;(require 'mk-project)

;(project-def "corepublisher"
;  '((basedir          "/var/www/corepub")
;    (src-patterns     ("*.php" "*.module" "*.module" "*.install" "*.inc" "*.test"))
;    (ignore-patterns  ("TAGS" "*.wsdl"))
;    (tags-file        "/var/www/corepub")
;    (file-list-cache  "/home/me/.my-java-project/files")
;    (open-files-cache "/home/me/.my-java-project/open-files")
;    (vcs              git)
;    (compile-cmd      "ant")
;    (ack-args         "--java")
;    (startup-hook     my-shutdown-hook)ƒ
;    (shutdown-hook    nil)))
;
;(defun my-shutdown-hook ()
;  ; Needs to do something here.
;)
;
;
;(global-set-key (kbd "C-c p c") 'project-compile)
;(global-set-key (kbd "C-c p l") 'project-load)
;(global-set-key (kbd "C-c p a") 'project-ack)
;(global-set-key (kbd "C-c p g") 'project-grep)
;(global-set-key (kbd "C-c p o") 'project-multi-occur)
;(global-set-key (kbd "C-c p u") 'project-unload)
;(global-set-key (kbd "C-c p f") 'project-find-file) ; or project-find-file-ido
;(global-set-key (kbd "C-c p i") 'project-index)
;(global-set-key (kbd "C-c p s") 'project-status)
;(global-set-key (kbd "C-c p h") 'project-home)
;(global-set-key (kbd "C-c p d") 'project-dired)
;(global-set-key (kbd "C-c p t") 'project-tags)
