def display_rainbow(color_list)
  puts "R: #{color_list[0]}, O: #{color_list[1]}, Y: #{color_list[2]}, G: #{color_list[3]}, B: #{color_list[4]}, I: #{color_list[5]}, V: #{color_list[6]}"
end
    colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

    describe '#display_rainbow' do
    it 'accepts one argument' do

  def display_rainbow(aura)
    puts "R: #{aura[0]}, O: #{aura[1]}, Y: #{aura[2]}, G: #{aura[3]}, B: #{aura[4]}, I: #{aura[5]}, V: #{aura[6]}"
  end

    allow(self).to receive(:puts)

    expect { display_rainbow(colors) }.to_not raise_error(NoMethodError)
    expect { display_rainbow(colors) }.to_not raise_error(ArgumentError)
  end

  it 'prints out the colors of the rainbow correctly when passed in in order' do
    colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

    expect(colors).to receive(:[]).with(0).at_least(:once).and_return("red")
    expect(colors).to receive(:[]).with(1).at_least(:once).and_return("orange")
    expect(colors).to receive(:[]).with(2).at_least(:once).and_return("yellow")
    expect(colors).to receive(:[]).with(3).at_least(:once).and_return("green")
    expect(colors).to receive(:[]).with(4).at_least(:once).and_return("blue")
    expect(colors).to receive(:[]).with(5).at_least(:once).and_return("indigo")
    expect(colors).to receive(:[]).with(6).at_least(:once).and_return("violet")

    expect { display_rainbow(colors) }.to output("R: red, O: orange, Y: yellow, G: green, B: blue, I: indigo, V: violet\n").to_stdout
  end
end
