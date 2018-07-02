class BabyFood

  FAVORITE_KINDS = [
    "peas",
    "carrots",
    "apple sauce",
    "peach"
  ]

  def initialize(kind:, size:, texture: "soft")
    unless FAVORITE_KINDS.include?(kind)
      puts "wwwwWWWWWAAAHHHHH!"
      return
    end

    if size != "small"
      puts "WAAAAHHH!"
      return
    end

    if texture != "soft"
      puts "Whhhaaaa WAAAAHHHHH!!"
      return
    end

    return puts "num nums"
  end
end
