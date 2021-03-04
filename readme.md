# ListView
listView is a style applied on table to render a desktop table as on a mobile table.</br>
```
<StyleAttribute name="tableType" value="listView" />
```
The table is rendered as a mobile list view.</br>
The style is only supported on GBC.

## GMA Native
![gma native](./screenshots/gma_native.png)
## GMA Native ( my phone )
![gma native](./screenshots/gma_native_phone.jpg)
![gma native](./screenshots/gma_native_phone_landscape.jpg)

## GMA UR ( my phone )
![gma ur](./screenshots/gma_gbc_default.jpg)

## Mobile browser
![mobile browser](./screenshots/mobile_browser.png)
## Mobile browser ( my phone )
![mobile browser](./screenshots/gbc_chrome_phone.jpg)

## Desktop browser
![desktop browser](./screenshots/desktop_browser.png)

## GDC UR Default
![GDC UR Def](./screenshots/gdc_gbc_default.png)

## GDC UR Custom ( how I'd really like it look in the GDC & Browser on all devices )
![GDC UR Cust](./screenshots/gdc_gbc_custom.png)

Some customers would like this same mobile feature but on desktop.</br>
The listView rendering looks ok but there are discrepancies on behaviors.</br>
For example, about **single** and **double click** or on **ROWBOUND**.

## Behaviors
- On desktop browser
    - if **no ROWBOUND** is set, the table actions are **NOT** displayed on any panel
    - if **ROWBOUND** is set, the table actions are **NOT** displayed on rows. Why ?
    - OK button **NOT** displayed on action panel. Why ?
    - double click is associated to accept
- On mobile browser
    - if **no ROWBOUND** is set, the table actions are **NOT** displayed on any panel
    - if **ROWBOUND** is set, the table actions are displayed on each row.
				( Actually I don't see that in Chrome on my phone, I don't get **ANY** views for my ROWBOUND actions! )
    - OK button **NOT** displayed on action panel. Why ?
    - doubleclick is not associated to accept. Why ? You need to add attribute DOUBLECLICK=accept.</br>
    Which then triggers the action on a single click.
- On mobile GMA/GMI native
    - if **no ROWBOUND** set, the table actions are displayed on the action panel
    - if **ROWBOUND** is set, the table actions are displayed on each row.
    - OK buttons displayed on action panel.
    - doubleclick is not associated to accept. Why ? You need to add attribute DOUBLECLICK=accept.</br>
    Which then triggers the action on a single click.

## Issues
- why is there no current line in the display array ?
You need to add style
```
<StyleAttribute name="highlightCurrentRow" value="yes" />
```
- What is the usage of style attribute **rowActionTrigger** compared to **DOUBLECLICK** ?
```
<StyleAttribute name="rowActionTrigger" value="singleClick" /> 
<StyleAttribute name="rowActionTrigger" value="doubleClick" />
```
