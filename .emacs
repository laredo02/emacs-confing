;; MILITROOOO
(defun firefox-search (query)
  "Search QUERY on Firefox using Google."
  (interactive "sSearch Firefox: ")
  (browse-url-firefox (concat "https://www.google.com/search?q=" (url-hexify-string query))))
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
;;(menu-bar-mode -1)

;; PACKAGE
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu-devel" . "https://elpa.gnu.org/devel/") t)
(package-initialize)

;; LEAN4
(add-to-list 'load-path "~/.emacs.d/lean4-mode")
(require 'lean4-mode)

;; GPTEL
(gptel-make-gemini "Gemini" :key "AIzaSyDhNnwT0GvaThnzlz72_JXzzO4USnqN0tA" :stream t)
(setq
 gptel-model 'gemini-2.0-flash
 gptel-backend (gptel-make-gemini "Gemini"
                 :key "AIzaSyDhNnwT0GvaThnzlz72_JXzzO4USnqN0tA"
                 :stream t))
;;(setq
;; gptel-model 'mistral:latest
;; gptel-backend (gptel-make-ollama "Ollama"
;;                 :host "localhost:11434"
;;                 :stream t
;;                 :models '(mistral:latest)))
;;(require 'auctex)
;;(custom-set-variables
;; '(package-selected-packages
;;   '(magit magit-section lsp-mode dash haskell-mode markdown-mode gptel pdf-tools auctex)))
;;(custom-set-faces
;; )

;; EVIL MODE (Vim MODE)
;; Download Evil
;; (unless (package-installed-p 'evil)
;;  (package-install 'evil))
;; Enable Evil
;;(require 'evil)
;;(evil-mode 1)
