require("rspec")
require("todo")


describe(Task) do


  before() do
    @test_task = Task.new("fry your brain")
  end

  describe("#description")do
    it("lets you give a description of your task")do
      expect(@test_task.description()).to(eq("fry your brain"))
    end
  end

  describe(".all")do
    it("should hopefully please be empty??") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a task to the array of tasks') do
      @test_task.save()
      expect(Task.all()).to(eq([@test_task]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved tasks from the @@all_tasks array")do
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end

end
