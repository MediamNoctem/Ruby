require_relative '../model/model'

class Controller
  def initialize
    @model = Model.new
  end

  def get_list_car
    @model.get_list_car
  end

  def update_file
    @model.update_file
  end
  def delete_car(app,table_index)
    form = FXDialogBox.new(app, "Удалить запись")
    # Set up its contents
    frame = FXHorizontalFrame.new(form, LAYOUT_FILL_X|LAYOUT_FILL_Y)
    FXLabel.new(frame, "Удалить выбранную запись?", nil, LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)

    FXButton.new(frame, "Cancel", nil, form, FXDialogBox::ID_CANCEL,
                 FRAME_RAISED|FRAME_THICK|LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)
    FXButton.new(frame, " OK ", nil, form, FXDialogBox::ID_ACCEPT,
                 FRAME_RAISED|FRAME_THICK|LAYOUT_SIDE_LEFT|LAYOUT_CENTER_Y)

    if form.execute != 0
    then
      @model.delete_car(table_index)
    end
  end
end
