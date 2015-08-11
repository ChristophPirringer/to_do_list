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

end
