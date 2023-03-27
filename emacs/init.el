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

(use-package foo)


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


;evil
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)

;keymaps evil
(define-key evil-motion-state-map (kbd "{") 'evil-ex)
(evil-define-key 'normal 'global (kbd "<SPC> w") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<SPC> w") 'save-buffer)
