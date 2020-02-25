def reformat_languages(languages)
  #search through language hash
  #extract info from oo and then functional
  #extract language name and type
  #set language name as new key on new hash

  new_hash = {}
  languages.each_pair do |style, hash_of_langs|
    establish_lang_keys(new_hash, hash_of_langs, style)
  end
  new_hash
end


def establish_lang_keys(new_hash, hash_of_langs, lang_style)
  hash_of_langs.each_pair do |lang_name, lang_type_hash|
    if new_hash[lang_name]
      new_hash[lang_name][:style] << lang_style
    else
      new_hash[lang_name] = lang_type_hash
      new_hash[lang_name][:style] = [lang_style]
    end
  end
end