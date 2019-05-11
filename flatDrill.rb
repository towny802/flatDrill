class Array
	def flatDrill()
		$flat = []
		self.each{|e| e.is_a?(Array) ? e.flatDrillHelper() : $flat << e }
		return $flat
	end
	def flatDrillHelper()
		self.each{|e| e.is_a?(Array) ? e.flatDrillHelper() : $flat << e }
	end
end

print( [[1,2,[3]],4].flatDrill )
