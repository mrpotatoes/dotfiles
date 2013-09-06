;; --------------------------------------------------------------------------------
;; Source control mode (major/mini) configurations.

;; --------------------------------------------------------------------------------
;; Git Gutter
;;  - https://github.com/syohex/emacs-git-gutter
;;  - If git gutter is enabled I'll need to cleanup the lines.
(require 'git-gutter)
(global-git-gutter-mode t)

;; --------------------------------------------------------------------------------
;; gist-mode
(add-to-list 'load-path "~/.emacs.d/elpa/gist-1.0.3/gist.elc")
(require 'gist)
