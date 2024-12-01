import preferences from '@ohos.data.preferences';
const PREFERENCES_NAME = 'myPreferences'
const KEY_APP_CLICK_ONE = 'AppIsClickOne'


let preference: preferences.Preferences
let preferenceTemp: preferences.Preferences
let context = getContext(this)


export class PreferencesUtil {

//static
  async getPreferencesFromStorage() {
    try {
      preference = await preferences.getPreferences(context, PREFERENCES_NAME)
    } catch (err) {
      console.log(err.message)
    }
  }

  async putPreference(isClick: boolean) {
    if (!preference) {
      await this.getPreferencesFromStorage()
    }
    try {
      await preference.put(KEY_APP_CLICK_ONE, isClick)
    } catch (err) {
      console.log(err.message)
    }
    try{
      await preference.flush()
      console.info("已经存入")
    }catch(err){
      console.log(err.message)
    }

    // let Ck=preferencesUtil.getPreference()
    // let text=Ck?"true":false
  }

  async getPreference() {
    let isClick1: string = ''
    if (!preference) {
      await this.getPreferencesFromStorage()
    }
    try {
      isClick1 = (await preference.get(KEY_APP_CLICK_ONE, isClick1) as string)
    } catch {
    }
    return isClick1
  }
}
export let preferencesUtil:PreferencesUtil=new PreferencesUtil
//export let preferencesUtil: PreferencesUtil = new PreferencesUtil;

