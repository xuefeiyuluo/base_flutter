class Post {
  const Post ({
    this.title,
    this.auth,
    this.imeurl
  });
  final String title;
  final String auth;
  final String imeurl;
}

final List<Post> posts = [
  Post(
    title: '标题1',
    auth: 'zhanhsan1',
      imeurl: 'http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'
  ),
  Post(
    title: '标题2',
    auth: 'zhanhsan2',
      imeurl: 'http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'
  ),
  Post(
    title: '标题3',
    auth: 'zhanhsan3',
    imeurl: 'http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'
  ),
  Post(
    title: '标题4',
    auth: 'zhanhsan4',
    imeurl: 'http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'
  ),
  Post(
    title: '标题5',
    auth: 'zhanhsan5',
    imeurl: 'http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'
  ),
  Post(
    title: '标题6',
    auth: 'zhanhsan6',

      imeurl: 'http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'
  )
];