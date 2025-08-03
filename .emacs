					; MILITROOOO
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(font . "Monospace-17"))
(global-display-line-numbers-mode t)
(global-visual-line-mode 1)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'wombat t)
					;(menu-bar-mode -1)

					; PACKAGE
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu-devel" . "https://elpa.gnu.org/devel/") t)
(package-initialize)

					; GPTEL
(gptel-make-gemini "Gemini" :key "AIzaSyDhNnwT0GvaThnzlz72_JXzzO4USnqN0tA" :stream t)
(setq
 gptel-model 'gemini-2.0-flash
 gptel-backend (gptel-make-gemini "Gemini"
                 :key "AIzaSyDhNnwT0GvaThnzlz72_JXzzO4USnqN0tA"
                 :stream t))

					; JINKS
(dolist (hook '(text-mode-hook prog-mode-hook conf-mode-hook)) ; per mode
  (add-hook hook #'jinx-mode))
					;(add-hook 'emacs-startup-hook #'global-jinx-mode) ; global
(use-package jinx
  :hook (emacs-startup . global-jinx-mode)
  :bind (("M-$" . jinx-correct)
         ("C-M-$" . jinx-languages)))

					; LEAN4
					;(add-to-list 'load-path "~/.emacs.d/lean4-mode")
					;(require 'lean4-mode)
