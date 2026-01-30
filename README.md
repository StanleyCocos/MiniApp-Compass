# MiniApp-Compass

小程序与多端框架调研项目：覆盖 FinClip、UniApp、mPaaS 三个主流框架及其 Flutter 接入方案。按框架聚合小程序代码、Flutter 示例与文档，根目录提供总结对比。

## 项目目的

- 调研主流小程序框架：FinClip、UniApp、mPaaS
- 调研各框架与 Flutter 的接入方式
- 存放各框架的小程序示例与 Flutter 接入示例
- 输出总结对比与选型建议

## 目录说明

| 目录 | 用途 |
|------|------|
| [finclip/](finclip/) | FinClip：小程序代码、Flutter 接入项目、专题文档 |
| [uniapp/](uniapp/) | UniApp：小程序/多端代码、Flutter 接入项目、专题文档 |
| [mpass/](mpass/) | mPaaS：小程序代码、Flutter 接入项目、专题文档 |
| [comparison.md](comparison.md) | **总结对比文档**：三框架横向对比与选型建议 |
| [resources/](resources/) | 公共参考资料、链接、截图 |

每个框架目录内结构统一：

- **mini-program/** — 该框架下的小程序或多端示例代码
- **flutter/** — 该框架与 Flutter 结合的接入示例工程
- **docs/** — 该框架的调研文档（简介、集成、Flutter 接入等）

## 如何看文档

- **总结与选型**：根目录 [comparison.md](comparison.md)
- **单框架文档**：进入对应框架的 `docs/`，如 [finclip/docs/](finclip/docs/)、[uniapp/docs/](uniapp/docs/)、[mpass/docs/](mpass/docs/)

## 如何跑代码

- **小程序示例**：进入 `\<框架\>/mini-program/`，按该目录内说明运行
- **Flutter 接入示例**：进入 `\<框架\>/flutter/`，按该目录内说明运行

（各示例补充具体项目后，可在各子目录 README 中写明运行命令。）

## License

见 [LICENSE](LICENSE)。
