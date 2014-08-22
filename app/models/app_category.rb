class AppCategory

  #父类
  @parent = {"应用"=>1,"游戏"=>2}
  #子类
  @child = {"视频"=>1,"音乐"=>2,"阅读"=>3,"导航"=>4,"社交"=>5,"摄影"=>6,"新闻"=>7,"工具"=>8,"美化"=>9,
                "教育"=>10,"生活"=>11,"安全"=>12,"旅游"=>13,"理财"=>14,"系统"=>15,"健康"=>16,"娱乐"=>17,
                "办公"=>18,"通讯"=>19,"单机"=>20,"网游"=>21,"赛车"=>22,"动作"=>23,"休闲"=>24,"棋牌"=>25,
                "角色"=>26,"战略"=>27,"射击"=>28,"格斗"=>29,"冒险"=>30,"体育"=>31}

  #类型
  @type = {"免费"=>1,"收费"=>2}

  #系统要求
  @system = {"Android 2.1"=>1,"Android 2.2"=>2,"Android 2.3"=>3,"Android 3.0"=>4,"Android 4.0"=>5}

  @cate = {:parent=>@parent,:child=>@child,:type=>@type,:system=>@system}

  def self.cate_to_a(key)
    @cate[key].to_a
  end

  def self.cate_key(key,id)
    @cate[key].index(id)
  end

end