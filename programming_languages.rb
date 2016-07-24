require 'pry'

def reformat_languages(languages)
new_hash = {}
languages.each do |style, lang_data_hash|
  lang_data_hash.each do |lang_name, type|
    if new_hash[lang_name]
      new_hash[lang_name][:style] << style
    else
      new_hash[lang_name] = type
     new_hash[lang_name][:style] = [style]
    end
  end
  end
new_hash
#binding.pry
end
