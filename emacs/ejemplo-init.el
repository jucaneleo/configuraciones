(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;use package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(eval-when-compile
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))



;theme
(unless (package-installed-p 'monokai-theme)
  (package-install 'monokai-theme))
(load-theme 'monokai t)

(set-frame-parameter (selected-frame) 'alpha '(95 . 50))
(add-to-list 'default-frame-alist '(alpha . (95 . 50)))

;helm
(unless (package-installed-p 'helm)
  (package-install 'helm))
(require 'helm)

(helm-mode 1)

;keymaps helm
(global-set-key (kbd "C-SPC") nil)

(define-prefix-command 'main)
(global-set-key (kbd "C-SPC") 'main)
(global-set-key (kbd "C-SPC f") 'helm-find-files)
(global-set-key (kbd "C-SPC x") 'helm-M-x)

;lsp
(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))
(unless (package-installed-p 'typescript-mode)
  (package-install 'typescript-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Or 'C-l', 's-l'
  :config
  (lsp-enable-which-key-integration t))

(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))

;evil
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)

;keymaps evil
(define-key evil-motion-state-map (kbd "{") 'evil-ex)
(evil-define-key 'normal 'global (kbd "<SPC> w") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<SPC> w") 'save-buffer)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(typescript-mode lsp-mode use-package monokai-theme helm evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
