# ベースイメージにnodeを使用
FROM node

# ディレクトリ作成
RUN mkdir /src /dist

# 資材のコピー
COPY package.json .
COPY package-lock.json .
COPY tsconfig.json .
COPY ./src/index.ts /src

# install ＋ build
RUN npm i
RUN npm run build

# アプリ起動
CMD node ./dist/index.js
