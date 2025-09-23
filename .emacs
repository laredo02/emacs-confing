(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(font . "Monospace-16"))
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(global-visual-line-mode 1)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'wombat t)
;;(menu-bar-mode -1)

;;PACKAGE
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu-devel" . "https://elpa.gnu.org/devel/") t)
(package-initialize)

;; JINKS
(dolist (hook '(text-mode-hook prog-mode-hook conf-mode-hook))
  (add-hook hook #'jinx-mode))
(use-package jinx
  :hook (emacs-startup . global-jinx-mode)
  :bind (("M-$" . jinx-correct)
         ("C-M-$" . jinx-languages)))

;; Use PDF-tools for PDF viewing
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)
(setq TeX-source-correlate-mode t)
(add-hook 'TeX-after-compilation-finished-functions
          #'TeX-revert-document-buffer)

;; Airline
;;(require 'airline-themes)
;;(load-theme 'airline-papercolor t)


;; GPTEL
;;(gptel-make-gemini "Gemini" :key "AIzaSyDhNnwT0GvaThnzlz72_JXzzO4USnqN0tA" :stream t)
;;(setq
;; gptel-model 'gemini-2.5-flash
;; gptel-backend (gptel-make-gemini "Gemini"
;;                 :key "AIzaSyDhNnwT0GvaThnzlz72_JXzzO4USnqN0tA"
;;                 :stream t))

;; LEAN4
;;(add-to-list 'load-path "~/.emacs.d/lean4-mode")
;;(require 'lean4-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine 'luatex)
 '(package-selected-packages
   '(auctex gptel haskell-mode jinx lsp-mode magit-section pdf-tools)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )












