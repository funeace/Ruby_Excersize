# 2×2 のマス目の左上からスタートした場合, 引き返しなしで右下にいくルートは 6 つある.
# では, 20×20 のマス目ではいくつのルートがあるか.
# 4! / 2! * 2!　から6が出るので、箱の合計!(40) / 横の箱の数(20) * 盾の箱の数(20)で求められる


denominator =  (2..40).inject(1){|result,item| result * item}
molecule = (2..20).inject(1){|result,item| result * item}

p denominator / (molecule * molecule)