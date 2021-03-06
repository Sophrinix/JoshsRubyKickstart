require File.join( File.dirname(__FILE__) , 'helper' )

describe 'sum_difference_product' do
  [     9 ,     2 ,
        4 ,     9 ,
        8 ,     7 ,
        7 ,     6 ,
        1 ,    62 ,
       12 ,    86 ,
        1 ,    90 ,
       15 ,    99 ,
        1 ,    26 ,
       78 ,   235 ,
      537 ,   664 ,
      838 ,   836 ,
      431 ,   157 ,
      652 ,   501 ,
      149 ,  6483 ,
     7227 ,  1828 ,
     6289 ,  8799 ,
     6116 ,  5278 ,
     5050 ,  5496 ,
     4062 , 84148 ,
    65060 , 91283 ,
    77229 , 83467 ,
     2117 , 45519 ,
    79153 , 15579 ,
    65874 , 81096 ,
       -5 ,     5 ,
     -235 ,    98 ,
        0 ,     0 ,
        0 ,     5 ,
  ].each_slice 2 do |a,b|
    it "should output #{a+b} , #{a-b} , #{a*b} when given #{a} , #{b}" do
      [a+b , a-b , a*b].map { |n| n.to_s }.each do |result|
        input_output("#{a} #{b}"){ sum_difference_product }[result].should == result
      end
    end
  end
end