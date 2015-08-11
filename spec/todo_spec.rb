require("rspec")
require("todo")


describe(Task) do

  describe(".all")do
    it("should hopefully please be empty??") do
      expect(Task.all()).to(eq([]))
    end
  end

  before() do
    @test_task = Task.new("fry your brain")
  end

  describe("#description")do
    it("lets you give a description of your task")do
      expect(@test_task.description()).to(eq("fry your brain"))
    end
  end

end
