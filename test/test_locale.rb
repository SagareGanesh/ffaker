# encoding: utf-8

require 'helper'

class TestLocale < Test::Unit::TestCase
  def test_code
    assert_match(/./, FFaker::Locale.code)
  end

  def test_language
    assert_match(/./, FFaker::Locale.language)
  end

  def test_language_with_args
    assert_match('French', FFaker::Locale.language('FR'))
  end

  def test_code_with_args
    assert_match('FR', FFaker::Locale.code('French'))
  end
end
