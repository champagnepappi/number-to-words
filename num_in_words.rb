class Num
  def number_in_words(n)
    numbers = {0=>'',
           1=>'One',
           2=>'Two',
           3=>'Three',
           4=>'Four',
           5=> 'Five',
           6=>'Six',
           7=>'Seven',
           8=>'Eight',
           9=>'Nine',
           10=>'Ten',
           11=>'Eleven',
           12=>'Twelve',
           13=>'Thirteen',
           14=>'Fourteen', 
           15=>'Fifteen',
           16=>'Sixteen',
           17=>'Seventeen',
           18=>'Eighteen',
           19=>'Nineteen',
           20=>'Twenty',
           30=>'Thirty',
           40=>'Fourty',
           50=>'Fifty',
           60=>'Sixty',
           70=>'Seventy',
           80=>'Eighty',
           90=>'Ninety'}

    new_numbers = n.to_s.split(//)

    if new_numbers.length == 3 && new_numbers[1..-1].all?{|num| num.to_i == 0}
      numbers[new_numbers[0].to_i] + ' Hundred'
    elsif new_numbers.length == 3 
      numbers[new_numbers[0].to_i] + ' Hundred' + ' ' +  numbers[new_numbers[1].to_i*10] +
        + ' ' + numbers[new_numbers[-1].to_i]
    elsif new_numbers.length == 4 && new_numbers[1..-1].all?{|num| num.to_i == 0}
      numbers[new_numbers[0].to_i] + ' Thousand'
    elsif new_numbers.length == 4
      numbers[new_numbers[0].to_i] + ' Thousand ' +  numbers[new_numbers[1].to_i] + 
        ' Hundred' + ' ' +  numbers[new_numbers[2].to_i*10] + ' ' + numbers[new_numbers[-1].to_i]
    end
  end
end
