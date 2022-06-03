require 'fox16'
require_relative '../controller/controller'
include Fox

class Main_window < FXMainWindow
    def initialize app
      super(app, "Главное окно", :width => 620, :height => 200)
      @controller = Controller.new

      menubar = FXMenuBar.new(self, LAYOUT_SIDE_TOP|LAYOUT_FILL_X)
      contents = FXVerticalFrame.new(self, LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y)
      frame = FXVerticalFrame.new(contents,
                                  FRAME_SUNKEN|FRAME_THICK|LAYOUT_FILL_X|LAYOUT_FILL_Y, :padding => 0)

      filemenu = FXMenuPane.new(self)
      FXMenuCommand.new(filemenu, "&Выход\tCtl-Q", nil, getApp(), FXApp::ID_QUIT)
      FXMenuTitle.new(menubar, "&Выход", nil, filemenu)

      manipmenu = FXMenuPane.new(self)
      FXMenuCommand.new(manipmenu, "&Удалить запись").connect(SEL_COMMAND, method(:delete_car))
      FXMenuCommand.new(manipmenu, "&Обновить файл").connect(SEL_COMMAND, method(:update_file))
      # FXMenuCommand.new(manipmenu, "&Прочитать файл").connect(SEL_COMMAND, method(:load_file))
      FXMenuTitle.new(menubar, "&Операции с таблицей", nil, manipmenu)

      @list_car = self.get_list_car
      @table = FXTable.new(frame,
      :opts => TABLE_COL_SIZABLE|TABLE_ROW_SIZABLE|LAYOUT_FILL_X|LAYOUT_FILL_Y,
      :padding => 2)
      @table.setTableSize(@list_car.size, 5)

      @table.setColumnText(0, 'Марка')
      @table.setColumnText(1, 'Модель')
      @table.setColumnText(2, 'Год сборки')
      @table.setColumnText(3, 'Тип двигателя')
      @table.setColumnText(4, 'Расход топлива')

      j = -1
      for i in @list_car
        @table.setRowText(j + 1, (j + 2).to_s)
        @table.setItemText(j + 1, 0, i.brand.to_s)
        @table.setItemText(j + 1, 1, i.model.to_s)
        @table.setItemText(j + 1, 2, i.year_assembly.to_s)
        @table.setItemText(j + 1, 3, i.engine_type.to_s)
        @table.setItemText(j + 1, 4, i.fuel_consumption.to_s)
        j += 1
      end
    end

    def create
      super
      show PLACEMENT_SCREEN
    end

    def get_list_car
      @controller.get_list_car
    end

    def delete_car(sender, sel, ptr)
      @controller.delete_car(self, @table.currentRow)
      @table.removeRows(@table.currentRow)
    end

    def update_file(sender, sel, ptr)
      @controller.update_file
    end
    def load_file(sender, sel, ptr)
      @controller.get_list_car
    end
end

if __FILE__ == $0
  FXApp.new do |app|
    Main_window.new app
    app.create
    app.run
  end
end