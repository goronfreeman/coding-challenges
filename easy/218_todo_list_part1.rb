# https://www.reddit.com/r/dailyprogrammer/comments/39ws1x/20150615_challenge_218_easy_todo_list_part_1/

class TodoList
  def initialize
    @list = []
  end

  def add_item(task)
    @list.push(task)
  end

  def delete_item(task)
    @list.delete(task)
  end

  def view_list
    if @list.empty?
      puts 'Your todo list is empty.'
    else
      @list.each_with_index do |item, index|
        index += 1
        puts "#{index}) #{item}"
      end
    end
  end
end
