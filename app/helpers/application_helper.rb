module ApplicationHelper
  def default_meta_tags
    {
      site: 'SmoothTrade',
      title: 'トレーディング専用webサイト',
      reverse: true,
      charset: 'utf-8',
      description: 'sns上で気楽に交換！使い方もトレーディング専用webサイトだから簡単で誰でもすぐ利用できます。',
      keywords: 'トレード,trade,トレーディング,交換',
      canonical: request.original_url,
      separator: '|',# これで　"タイトル | サイトネーム"ってなる
      icon: [
        { href: image_url('profile1.jpg') },
        { href: image_url('logo.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: :'SmoothTrade',
        title: :'トレーディング専用webサイト',
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('plofile1.jpg'),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@Smoothtrade212',
        image: image_url('plofile1.jpg'),
      }
    }
  end

  # 各ページのタイトル設定
  # Googleのような検索エンジンの検索結果一覧ページで活用されます
  def full_title(page_title = '')
    base_title =SmoothTrade"
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end
  
  # 各ページの説明文　120文字前後
  # Googleのような検索エンジンの検索結果一覧ページで活用されます
  def full_description(page_description = '')
    base_description = "SmoothTradeは、トレーディング専用webサイトです。sns上で気楽に交換！使い方もトレーディング専用webサイトだから簡単で誰でもすぐ利用できます。"
    if page_description.empty?
      base_description
    else
      page_description
    end
  end
  
  # 各ページの説明文 50文字前後
  # SNS等でシェアされた際に活用されます
  def og_description(page_description = '')
    base_description = "SmoothTradeは、トレーディング専用webサイトです。"
    if page_description.empty?
      base_description
    else
      page_description
    end
  end
  
  # 各ページのイメージ画像
  # SNS等でシェアされた際に活用されます
  def og_image(page_image = '')
    base_image = "https://smoothtrade.link/app/assets/images/logo.jng"
    if page_image.empty?
      base_image
    else
      page_image
    end
  end
end
