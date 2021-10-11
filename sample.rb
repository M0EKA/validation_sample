def foo(a, b)
  a + b
rescue
  "計算できませんでした"
end

puts foo(1, "2")
