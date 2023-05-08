;;; my-theme-utils.el --- Support rgb to hex and chinese color -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun rgb-to-hex (r g b)
  "Convert RGB values (R, G, B) to a hexadecimal string."
  (format "#%02x%02x%02x" r g b))


(defconst tcc-002-yanzhixue (rgb-to-hex 241 222 236) "胭脂雪")
(defconst tcc-081-dingxiang (rgb-to-hex 206 147 180) "丁香")
(defconst tcc-95-qingzi (rgb-to-hex 197 164 204) "轻紫")
(defconst tcc-127-biluo (rgb-to-hex 174 208 237) "碧落")
(defconst tcc-162-huangbaiyou (rgb-to-hex 254 235 192) "黄白游")
(defconst tcc-208-duanchang (rgb-to-hex 232 237 185) "断肠")
(defconst tcc-241-canglang (rgb-to-hex 172 214 204) "沧浪")
(defconst tcc-285-xueya (rgb-to-hex 233 209 181) "血牙")
(defconst tcc-269-wuxinlv (rgb-to-hex 191 209 178) "无心绿")
(defconst tcc-351-ningzhi (rgb-to-hex 241 242 229) "凝脂")

(defvar my-bg-main tcc-351-ningzhi "Current background main color")

(setq my-bg-main tcc-351-ningzhi)

;; 定义一个函数，用于创建 face
(defun my-theme-utils--create-face (color)
  (let ((face-name (intern (concat "my-theme-utils-face-" color))))
    (eval `(defface ,face-name
             '((t (:background ,color)))
               ,(concat "Face for background color " color)
               :group 'my-theme-utils))
    face-name))

;; 定义一个函数，用于获取 face 的 symbol
(defun my-theme-utils--get-face (rgb)
  (my-theme-utils--create-face (apply #'rgb-to-hex rgb)))

(defvar colorize-rgb-to-hex-keywords
  `((,(rx "(" (group "rgb-to-hex") (* whitespace) (group (1+ (in "0-9"))) (* whitespace) (group (1+ (in "0-9"))) (* whitespace) (group (1+ (in "0-9"))))
     (1 (my-theme-utils--get-face (list (string-to-number (match-string 2)) (string-to-number (match-string 3)) (string-to-number (match-string 4)))) prepend))
    (,(rx bow (group "tcc-") (1+ (in "0-9")) (0+ (in "a-z" "A-Z")) (* whitespace) "=" (* whitespace) (group "(" "rgb-to-hex"))
     (1 (my-theme-utils--get-face (list (string-to-number (match-string 2)) (string-to-number (match-string 3)) (string-to-number (match-string 4)))) prepend))))

(define-minor-mode colorize-rgb-to-hex
  "Minor mode to colorize `rgb-to-hex' calls and variables with their respective colors."
  :lighter " Colorize"
  (if colorize-rgb-to-hex
      (progn
        (font-lock-add-keywords nil colorize-rgb-to-hex-keywords)
        (font-lock-flush))
    (font-lock-remove-keywords nil colorize-rgb-to-hex-keywords)
    (font-lock-flush)))



(provide 'my-theme-utils)
;;; my-theme-utils.el ends here
