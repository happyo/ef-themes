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

(provide 'my-theme-utils)
;;; my-theme-utils.el ends here
