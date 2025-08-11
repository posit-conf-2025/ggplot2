# plain-div.lua
function Div(div)
  if div.classes:includes("plain") then
    div.classes = div.classes:filter(function(c) return c ~= "plain" end)
    return div:walk({
      Para = function(para)
        return pandoc.Plain(para.content)
      end
    })
  end
end
