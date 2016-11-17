class Subject
	@@observers = []
	def get_state
		@state
	end

	def set_state(state)
		@state = state
		notify_all_observers
	end

	def attach(observer)
		@@observers.push(observer)
	end

	def notify_all_observers
		@@observers.each do |observer|
			observer.update
		end
	end
end