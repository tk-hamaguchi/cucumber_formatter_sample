# language: ja

機能: Passing background with scenario outlines sample

  背景:
    前提 '10' cukes
    ならば the multiline string should be
      """
      I'm a cucumber and I'm okay. 
      I sleep all night and I test all day
      """


  シナリオ: another passing background3
    前提 I should have '10' cukes
    もし the table should be
      |a|b|
      |c|d|
    ならば the multiline string should be
      """
      I'm a cucumber and I'm okay. 
      I sleep all night and I test all day
      """

  シナリオアウトライン: passing background
    * I should have '<count>' cukes
    例:
      |count|
      | 10  |

  シナリオテンプレート: another passing background4
    * I should have '<count>' cukes
    サンプル:
      |count|
      | 10  |

  シナリオ: aaaa
    シナリオテンプレート: another passing background4
      * I should have '<count>' cukes
      サンプル:
        |count|
        | 10  |
  
