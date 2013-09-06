;; --------------------------------------------------------------------------------
;; Helm
;;    - https://github.com/emacs-helm/helm/wiki#wiki-generalhelmcommands
;;    - https://github.com/emacs-helm/helm
;;    - git clone https://github.com/emacs-helm/helm.git 
;;    - http://amitp.blogspot.com/2012/10/emacs-helm-for-finding-files.html
;;    - http://stackoverflow.com/questions/12672186/how-to-have-emacs-helm-list-offer-files-in-fixed-directories-as-options
;(add-to-list 'load-path "~/.emacs.d/helm")
;(require 'helm-config)
;
;(global-set-key (kbd "C-c h") 'helm-mini)
;(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; --------------------------------------------------------------------------------
;; Helm Tags
;;     - https://github.com/syohex/emacs-helm-gtags
;(add-to-list 'load-path "~/.emacs.d/helm-gtags")
;(require 'helm-gtags)
;(helm-gtags-mode 1)
;
;(add-hook 'php-mode-hook
;  '(lambda () 
;    (global-set-key (kbd "M-.") 'helm-gtags-find-tag)    ; Find a tag.
;    (local-set-key (kbd "M-,") 'helm-gtags-find-rtag)  ; reverse tag
;))

(put 'dired-find-alternate-file 'disabled nil)
