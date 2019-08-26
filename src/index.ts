import Express from 'express';
const app = Express();
// HTTP Get を受け取ったら単純なjsonを返す
app.get(
  '/',
  (req: Express.Request, res: Express.Response): Express.Response =>
    res.send({ hello: 'World' })
);
// PORT:8080で待ち受け
app.listen(8080, (): void => console.log('listen on port 8080'));
