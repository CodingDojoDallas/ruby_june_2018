require_relative 'project'
RSpec.describe Project do
	before(:each) do
		#updated this block to create two projects
		@project1 = Project.new('Project 1', 'description 1', 'owner 1')
		@project2 = Project.new('Project 2', 'description 2', 'owner 2') # create a new project and make sure we can set the name attribute

	end
	it 'has a getter and setter for name attribute' do
		@project1.name = "Change Name" # this line would fail if our class did not have a setter method
		expect(@project1.name).to eq("Change Name")# this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
	end

	it 'has a method elevator_pitch to explain name and description' do
		expect(@project1.elevator_pitch).to eq("Project 1, description 1")
		expect(@project2.elevator_pitch).to eq("Project 2, description 2")
	end

	it 'has a method owner to add owner' do
		expect(@project1.owner).to eq("Project 1, description 1, owner 1")
		expect(@project2.owner).to eq("Project 2, description 2, owner 2")
	end

	it 'has a method to make empty array' do
		expect(@project1.add_tasks("smile")).to eq(["smile"])
		expect(@project2.add_tasks("happy")).to eq(["happy"])
	end

	it 'has a method to print out tasks' do
		@project1.add_tasks("smile")
		@project1.add_tasks("Happy")
		expect(@project1.print_tasks).to eq(["smile", "Happy"])
	end
end