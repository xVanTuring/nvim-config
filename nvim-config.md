# Nvim Notes

> 记录一下 Nvim 相关的配置信息

## 插件

### Plug 插件 随 `init.vim`

### Coc 插件

1. coc-eslint
2. coc-pairs
3. coc-tsserver
4. coc-terminal

## 快捷键

> 当前配置的 leader 是 ` `

### 编辑相关

1. 退出插入模式 `j k`
2. 删除当前行内容进入编辑模式 c c
3. 包裹当前选中 选中后 S ",',[
4. 高级包裹 ysiw) 单词包裹 ys$" 字符串包裹 ds] 删除包裹 cs'" 替换包裹

### LSP 相关

1. 跳转定义 `g d`
2. 查找引用 `g r`
3. 显示文档 `K`
4. 跳转/显示单词 `*`
5. 整理导入 `A-O`
6. 显示 Code-Action `leader a` 选中下, `leader ac` 当前行
7. 指向 Code Lens `leader cl`
8. 注释/弹窗滚动 当前未配置
9. 整理导入 `OR`
10. LSP 格式化代码 `Alt I`
11. Prettier 格式化 `==`

### 终端相关

1. 底部终端 `Alt ``
2. 悬浮终端 `Alt i`

### 窗口导航

1. 打开文件管理器 `leader e`
2. tab 切换 `H L` `J K` `Tab`
3. 窗口切换 `Alt h j k l` `Alt Tab`
4. 关闭窗口 `Alt q`
5. 关闭 tab `leader w`
6. 搜索文件 `leader ff` `leader fb`
7. 调整窗口大小 <Alt arrow-keys>

## 常用命令

### nVim 自带

1. 创建/打开文件 e 地址
2. 创建 tab :tabnew 地址
3. 下个 tab :tabn
4. 上个 tab :tabp
5. 保留当前 tab :tabo
6. 删除到行尾 D

## 编辑导航

1. 单词尾 e
2. 段落跳转 { }
3. 半屏跳转 Alt u/ Alt d
4. 行首行尾 H L
5. 行内搜索 f,t
6. 行居中,上,下 zz, zt,zb
7. 跳转到行 :10
8. 相对跳转 5 j,k

## 剪切板

## 文档 :h

1. 键值表: key-notation

---

```typescript
function a(test, name: string) {}
```
