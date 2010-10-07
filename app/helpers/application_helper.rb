module ApplicationHelper
# swf_object
  def swf_object(swf, id, width, height, flash_version, background_color, params = {}, vars = {}, create_div = false)
    # create div ?
    create_div ? output = "<div id='#{id}'>This website requires <a href='http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash&promoid=BIOW' target='_blank'>Flash player</a> #{flash_version} or higher.</div><script type='text/javascript'>" : output = "<script type='text/javascript'>"
    output << "var so = new SWFObject('#{swf}', '#{id}', '#{width}', '#{height}', '#{flash_version}', '#{background_color}');"
    params.each  {|key, value| output << "so.addParam('#{key}', '#{value}');"}
    vars.each    {|key, value| output << "so.addVariable('#{key}', '#{value}');"}
    output << "so.write('#{id}');"
    output << "</script>"
  end
  def list_medias()
    @medias = Media.find(:all, :order => 'created_at DESC')
    @medias.each do |media|
      media[:extension]=media.file.split('.')[1]
    end
    @medias.each do |media|
      puts media.name
    end
  end
  def list_articles()
    @articles = Article.find(:all, :order => 'created_at DESC')
  end
end

