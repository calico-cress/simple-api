# Node.js（TypeScript + express）Web API

## 使い方

### Dockerイメージのビルドからコンテナ実行まで（`docker-compose.yml`を準備している場合）

```bash
docker-compose up -d # << -dはバックグラウンド実行
```

### `docker-compose.yml`で定義されたコンテナを全停止

```bash
docker-compose down
```

---

### Dockerイメージのビルド（常にnodeの最新イメージを使う場合 -> `--pull=true`）

```bash
docker image build -t example/echo .
docker build -t example/echo . # << 省略形
```

### 起動

```bash
docker container run -d -p 9000:8080 example/echo
docker run -d -p 9000:8080 example/echoa # << 省略形
```

### 動確

```bash
curl http://localhost:9000/
```

### 停止

```bash
docker container stop $(docker container ls --filter "ancestor=example/echo" -q)
docker stop $(docker container ls --filter "ancestor=example/echo" -q) # << 省略形
```

※ fish shellの場合、$無しで実行

## Docker Hub

<https://cloud.docker.com/repository/docker/simpledai/echo>
