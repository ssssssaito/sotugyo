# coding: utf-8
require 'csv'   # csv操作を可能にするライブラリ
require 'kconv' # 文字コード操作をおこなうライブラリ
class Risyu < ActiveRecord::Base
  belongs_to :subject, :foreign_key => "sub_num"
  # CSVファイルを読み込み、ユーザーを登録する
  def self.import_csv(csv_file)
    # csvファイルを受け取って文字列にする
    CSV.foreach(csv_file.path, headers: true) do |row|
      risyu = Risyu.new
      risyu.student_num = row[0]  #csvの1列目を格納
      risyu.sub_num    = row[2]  #csvの2列目を格納
      risyu.result = row[7]  #csvの3列目を格納
      risyu.save
    end
  end
end
