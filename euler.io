List myAverage := method(
  if(self select(value, value type != "Number") isEmpty,
	  self sum / self size,
          return Exception raise ("There is a non-number!")
    )
)

list() myAverage println
