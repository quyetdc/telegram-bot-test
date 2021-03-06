require 'leveldb'

class LevelDBHandler
	def initialize db_name
		@db = LevelDB::DB.new ENV[db_name]
	end

	def sample_data
		@db.put "q1", "1. Kyber là sàn tập trung hay phi tập trung?"
		@db.put "q1_a1", "Tập trung"
		@db.put "q1_a2", "Phi tập trung"
		@db.put "q1_correct_answer", "q1_a2"

		@db.put "q2", "2. Kyber được tích hợp vào ví nào?"
		@db.put "q2_a1", "MEW"
		@db.put "q2_a2", "Metamask"
		@db.put "q2_correct_answer", "q2_a1"

		@db.put "q3", "3. Có cần deposit token khi giao dịch trên Kyber không?"
		@db.put "q3_a1", "Có"
		@db.put "q3_a2", "Không"
		@db.put "q3_correct_answer", "q3_a1"

		@db.close
	end

	def fetch
		@db.each { |k, v| puts "--- #{k}: #{v}"}
		@db.close
	end

	def flush
		@db.keys.each { |key| @db.delete(key)}
		@db.close
	end
end
