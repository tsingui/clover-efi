### 简介
这个东东是 [@goodwin](https://github.com/goodwin/ALCPlugFix) 写的，主要是用来监听拔插耳机，然后发送特定的HDA指令（通过hda-verb发送给CodecCommander，再由CodecCommander发给系统）。

所以你必须要安装并加载[CodecCommander.kext](https://bitbucket.org/RehabMan/os-x-eapd-codec-commander/downloads)

理论上来说这个是通用的东西，我只是fork过来改成执行`ALC298`的指令，以解决`ALC298`的内置Mic/耳机Mic 切换问题，以及耳机单声道问题，顺便解决唤醒无声问题。

---

### 使用方法：

如果你是ALC298，不需要进行第2步了，已经编译好。

1. 确保你安装了 CodecCommander.kext
2. 下载代码，修改里面的HDA指令为你自己声卡的，编译出来，覆盖`alc_fix/ALCPlugFix`。
3. 执行脚本安装守护进程
	- `cd alc_fix`
	- `chmod +x install.sh`
	- `./install.sh`
4. 没有错误的话，可以拔插耳机测试了。
