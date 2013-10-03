;; --------------------------------------------------------------------------------
;; Projects using mk-project
;;    - https://github.com/mattkeller/mk-project
;;    - https://github.com/rakete/mk-project
(require 'mk-project)
(project-def "corepublisher"
  '((basedir          "/var/www/corepub/")
    (src-patterns     ("*.inc" "*.module" "*.php" "*.install"))
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

(defun corepublisher-shutdown ()
  ;(remove-hook 'after-save-hook 'mk-project-saved-file)
)

(defun mk-project-saved-file () 
  "Regenerate the project's TAG file. Runs in the background."
  ;(message "%s" mk-proj-name)
  (message "%s" mk-proj-tags-file)
  ;(mk-proj-assert-proj)

  (if mk-proj-tags-file
    (let* ((tags-file-name (file-name-nondirectory mk-proj-tags-file))
      (message "hey")
      (relative-tags (string= (file-name-as-directory mk-proj-basedir)
        (file-name-directory mk-proj-tags-file)))
      (default-directory (file-name-as-directory
        (file-name-directory mk-proj-tags-file)))
      (default-find-cmd (concat "find '" (if relative-tags "." mk-proj-basedir) "' -type f "(mk-proj-find-cmd-src-args mk-proj-src-patterns)))
      (etags-cmd
        (concat (or (mk-proj-find-cmd-val 'src) default-find-cmd) " | etags -o '" tags-file-name "' - "))
      (proc-name "etags-process"))

    ;(message "project-tags default-dir %s" default-directory)
    ;(message "project-tags cmd \"%s\"" etags-cmd)
    ;(message "Refreshing TAGS file %s..." mk-proj-tags-file)
    ;(start-process-shell-command proc-name "*etags*" etags-cmd)
    ;(set-process-sentinel (get-process proc-name) 'mk-proj-etags-cb)
    )
    (message "mk-proj-tags-file is not set"))
)

(add-hook 'after-save-hook 'mk-project-saved-file)
