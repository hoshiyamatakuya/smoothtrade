module ApplicationHelper
  def default_meta_tags
    {
      site: 'SmoothTrade',
      title: 'トレーディング専用webサイト',
      reverse: true,
      charset: 'utf-8',
      description: 'sns上で気楽に交換。。使い方もトレーディング専用webサイトだから簡単で誰でもすぐ利用できます。',
      keywords: 'トレード,trade,トレーディング,交換',
      canonical: request.original_url,
      separator: '|',# これで　"タイトル | サイトネーム"ってなる
      icon: [
        { href: image_url('logo.jpg') },
        { href: image_url('plofile1.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
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
    base_title = 'SmoothTrade'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  
  def full_url(path)
    domain = if Rails.env.development?
               'http://0.0.0.0:3000'
             else
               'https://smoothtrade.link'
             end
    "#{domain}#{path}"
  end
  
end
