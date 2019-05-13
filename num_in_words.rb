class Num
  def number_in_words(n)
    num = {0=>'',
           1=>'one',
           2=>'two',
           3=>'three',
           4=>'four',
           5=> 'five',
           6=>'six',
           7=>'seven',
           8=>'eight',
           9=>'nine',
           10=>'ten',
           11=>'eleven',
           12=>'twelve',
           13=>'thirteen',
           14=>'fourteen', 
           15=>'fifteen',
           16=>'sixteen',
           17=>'seventeen',
           18=>'eighteen',
           19=>'nineteen',
           20=>'twenty',
           30=>'thirty',
           40=>'fourty',
           50=>'fifty',
           60=>'sixty',
           70=>'seventy',
           80=>'eighty',
           90=>'ninety'}
    new_num = n.to_s.split(//)
    
      if new_num.length == 3
        num[new_num[0].to_i].capitalize + ' hundred' + ' ' +  num[new_num[1].to_i*10] +
          + ' ' + num[new_num[-1].to_i]
      elsif new_num.length == 4
        num[new_num[0].to_i].capitalize + ' thousand ' +  num[new_num[1].to_i].capitalize + ' hundred' + ' ' +  num[new_num[2].to_i*10] +
          + ' ' + num[new_num[-1].to_i]
      end
    # end
  end
end
