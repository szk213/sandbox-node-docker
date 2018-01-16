# sandbox-node-docker

nodeアプリのdocker imageを作成してみる

## ビルド時にnpm installで止まってた問題はDNSだった。
以下を追記して解決

```~\.docker\machine\machines\default\config.json
"Dns": [
                "8.8.8.8",
                "8.8.4.4"
            ],
```

### 参考

- [How to change “default” docker-machine's dns settings
](https://stackoverflow.com/questions/34296230/how-to-change-default-docker-machines-dns-settings)