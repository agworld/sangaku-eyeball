module Sangaku

  class Point

    def draw(image, offset)
      image.draw(x + offset[0], y + offset[1], 0)
    end

  end

  class Line

    def draw(window, color = 0x88FFFFFF)
      window.draw_line(*(p1.to_a), color, *(p2.to_a), color)
    end

  end

  class Polygon

    def draw(window, color = 0xFFFFFFFF)
      lines.each { |line| line.draw(window, color) }
    end

  end

  class AABB

    def draw(window, color = 0x885555FF)
      x1, y1 = min.to_a
      x2, y2 = max.to_a
      window.draw_line(x1, y1, color, x2, y1, color)
      window.draw_line(x2, y1, color, x2, y2, color)
      window.draw_line(x2, y2, color, x1, y2, color)
      window.draw_line(x1, y2, color, x1, y1, color)
    end

  end

  class Grid

    def draw(window, color = 0x55aaaaFF)
      @xs.each do |x|
        window.draw_line(x, 0, color, x, window.height, color)
      end
      @ys.each do |y|
        window.draw_line(0, y, color, window.width, y, color)
      end
    end

  end

  class Star

    def draw(window, color = 0x88FF5555)
      x = @center.x
      y = @center.y
      dx = 0.5 * @size.x
      dy = 0.5 * @size.y
      window.draw_line(x, y, color, x+dx, y, color)
      window.draw_line(x, y, color, x-dx, y, color)
      window.draw_line(x, y, color, x, y+dy, color)
      window.draw_line(x, y, color, x, y-dy, color)
    end

  end

end
