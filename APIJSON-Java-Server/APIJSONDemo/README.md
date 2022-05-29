# APIJSONDemo

APIJSON + SpringBoot 初级使用的最简单 Demo

### 运行

右键 DemoApplication > Run As > Java Application


```json5
{
    '[]': {
'User': {
      
      '@column': 'id,name'
    },
    'Comment': {
'userId@': '/User/id',
      '@column': 'id,date,userId',

    },
"page": 0,
    "count": 5
    
  },
'@explain': true
}
```

```json5
{
    '[]': {
'Moment': {
      '@column': 'id,date,content,userId',
    },
 "User": {
      "id@": "/Moment/userId",
      "@column": "id,name"
    },
    'Comment': {
'userId@': '/User/id',
      '@column': 'id,date,userId',

    },
    
"page": 0,
    "count": 5
    
  },
'@explain': true
}
```