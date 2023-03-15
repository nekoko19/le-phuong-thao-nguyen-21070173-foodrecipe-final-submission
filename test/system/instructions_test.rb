require "application_system_test_case"

class InstructionsTest < ApplicationSystemTestCase
  setup do
    @instruction = instructions(:one)
  end

  test "visiting the index" do
    visit instructions_url
    assert_selector "h1", text: "Instructions"
  end

  test "should create instruction" do
    visit instructions_url
    click_on "New instruction"

    fill_in "Cook time", with: @instruction.cook_time
    fill_in "Description", with: @instruction.description
    fill_in "Ingredient", with: @instruction.ingredient
    fill_in "Prep time", with: @instruction.prep_time
    click_on "Create Instruction"

    assert_text "Instruction was successfully created"
    click_on "Back"
  end

  test "should update Instruction" do
    visit instruction_url(@instruction)
    click_on "Edit this instruction", match: :first

    fill_in "Cook time", with: @instruction.cook_time
    fill_in "Description", with: @instruction.description
    fill_in "Ingredient", with: @instruction.ingredient
    fill_in "Prep time", with: @instruction.prep_time
    click_on "Update Instruction"

    assert_text "Instruction was successfully updated"
    click_on "Back"
  end

  test "should destroy Instruction" do
    visit instruction_url(@instruction)
    click_on "Destroy this instruction", match: :first

    assert_text "Instruction was successfully destroyed"
  end
end
